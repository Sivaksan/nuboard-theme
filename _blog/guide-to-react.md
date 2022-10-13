---
title: Guide to React
date-published: 11/08/2000
description: Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter
banner: "https://picsum.photos/700/300"
tags:
  - Javascript
  - Frontend
  - React
References:
  - https://dummyurl.com/
  - https://dummyurl.com/
---

#### <u>Guide to React</u>
# 1. [Object Structuring](#Object-structuring)
# 2. [Binding](#binding) 
# 3. [Super](#super)
# 4. [setState()](#setstate)
# 5. [batching](#batching)

---
# Object Structuring
importing multiple state variables in inside the render method of the component
```jsx
const {var1, var2, var4} = this.state
```
So that we don't need to write  this
```jsx
{{ this.state.var1}}
```
everytime to access the state variable

---
# Binding
[[This]] reference to a method outside of the constructor's scope is not defined for that method unless its bound to its class component.

Consider this...
```jsx
class Object extends React.components{
	constructor(){
		this.state{
			var = ${initial_val}
		}
	}

	buttonClicked(){
		console.log(this); // to check the scope of this
	}
	Render(){
		return(
			<button onclick={this.buttonClicked} />
		)
	}
}
```

The code above looks that it do be working fine, doesn't it?
But when run into the console it produces this error.

```console
Uncaught TypeError: Cannot read the property
This is undefined.
```

### Why?
Because we didn't bind our function to the class.

To do so, we add a statement in our constructor addressing that this function is a part of this class.

Like this
```jsx
this.function = this.function.bind(this);
```

> **__NOTE__** "Binding can be avoided if we are using arrow functions."

---
# Super
A call to the constructor of parent class.
*props* keyword is (not necessarily ) to be passed along as an argument to the super method.
This is defined only after this super() call.

#### Syntax -
```jsx
class Var extends React.Component{
	constructor(props){
		super(props);
		...
	}
	...
}
```

---
# setState()
```jsx
this.setState(
	...
)
```

It is a predefined function of the *Component* class of React. 
Used to modify the value of the variable having some state beforehand.

### WithoutPrevious State
When updating the value doesn't  need the value of previous state

```jsx
this.setState({
	var: ${newvalue}
});
```

### With Previous State
When the changed are made while considering the previous value

```jsx
this.setState((prevState) => {
	return {
		var: newState(prevState)
	}
});
```


### A callback.
To perform some action right after the [[asynchronous]] setState() call ends.
A callback function is added at the end of every setState call.

Syntax -
```jsx
setState((prevState) => {
	return(
		...
	)
}, () => {}); // this arrowfunction is executed only after our state is updated.
```

---
# Batching
### Used as eventlistener/
Multiple call to an [[asynchronous]] setState function gets combined inorder for it to render only once.

The state is handled differently in both the forms

### Without Previous State
While performing batching the callback function of the last setState is considered when rendering.

### With Previous State
All callbacks are managed as a queue and the value of previous state is update with every setState function called.
This way we get a single rendered output of the combined count of all the setState functions present within.

### Used with promises,etc/
in a [[synchronous]] environment the behaviour of setState() is not quite the same.

the Call to setState is rendered as many times as the function is called, the value of the state is altered as that many times as well.

---
