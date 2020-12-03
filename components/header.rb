def header(props)
    props = props['header']
    
    header = ''
    header += " <div> "
    header += " 	<h1>#{props.fetch('title', '')}</h1> "
    header += " 	<h2>#{props.fetch('subtitle', '')}</h2> "
    header += " 	<img src='#{props.fetch('image', '')}' /> "
    header += " </div> "

    header
end