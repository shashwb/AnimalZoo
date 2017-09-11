class ErrorMessage extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    if (this.props.message.length === 0) {
    	return null
    } else {
    	return (
    		<p> Error: {this.props.message} </p>
    	)
    }
  }
}

