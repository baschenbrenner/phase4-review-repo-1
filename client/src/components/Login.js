import React, { useState } from "react";
import {Link, useNavigate} from "react-router-dom";


const Login = ({ setUser}) => {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [firstName, setFirstName] = useState("")
    const [errors, setErrors] = useState([]);
    const navigate = useNavigate();


function handleSubmit(e) {
    e.preventDefault()
    const user = {username: username, password: password, firstName: firstName}
    fetch("/login", {
        method: "POST", 
        headers: {
            "Content-Type" : "application/json"
        },
        body: JSON.stringify(user)
    })
    .then((r) => {
        if (r.ok) {
            r.json().then((user) => setUser(user));
            navigate("/")
          } else {
            r.json().then((err) => setErrors(err.errors));
          }
    })
}


    return ( 
     <div className="new"> 
      <form onSubmit={handleSubmit}>
       <label>Username:</label>
        <input
          type="text"
          required
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
       <label>Username:</label>
        <input
          type="text"
          required
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <button>Login</button>
      </form>
        <h2>Don't have an account?</h2>
        <button>
        <Link to="/signup"> Sign Up</Link>
        </button>
        
        </div>
     );
}
 
export default Login;