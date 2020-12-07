def header(props)
    header = ''
    header += " <div class='right-placed-logo-header jumbotron'> "
    header += "     <div class='d-flex justify-content-between'> "
    header += " 	    <article>"
    header += " 			<h1>#{props.fetch('title', '')}</h1>"
    header += "     		<p> We're Crunch! We're an online accounting service. </p>"
    header += " 	    </article>"
    header += " 	    <img src='#{props.fetch('image', '')}' /> "
    header += "     </div> "
    header += " </div> "

    header
end