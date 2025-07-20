class ErrorBoundary extends React.Component {
  componentDidCatch(error, errorInfo) {
    // Send error to monitoring service
    console.error('Error:', error, errorInfo);
  }
  render() {
    return this.props.children;
  }
}