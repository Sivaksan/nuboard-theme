---
title: Guide to React
date-published: 11/08/2000
description: Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter
tags: [ Javascript, Frontend, React ]
References: ["https://dummyurl.com/", "https://dummyurl.com/"]  # website url of references
---

# <u>Guide to React</u>
1. ### [Object Structuring](#Objectstructuring)
2. ### [Binding](#Binding) 
3. ### [Super](#Super)
4. ### [setState()](#setState())
5. ### [Batching](#Batching)
6. ### [Using map() to render an array of items](#Usingmap()torenderanarrayofitems)

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

## Binding can be avoided if we are using arrow functions.

# Super
A call to the constructor of parent class.

*props* keyword is (not necessarily ) to be passed along as an argument to the super method.

This is defined only after this super() call.

Syntax -
```jsx
class Var extends React.Component{
	constructor(props){
		super(props);
		...
	}
	...
}
```
