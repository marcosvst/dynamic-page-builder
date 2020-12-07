def iconed_list(props)
    items = ''
    items += " 	<ul style = 'list-style: none'> "
    props.fetch('items', []).each do |item|
        items += " <li> "
        items += " 	  <i class='fas fa-#{item['icon']['name']}' style='color: #{item['icon']['color']}'></i> "
        items += " 	  <span>#{item['text']}</span> "
        items += " </li> "
    end
    items += " 	</ul> "

    iconed_list = ''
    iconed_list += " <div> "
    iconed_list += " 	<h1>#{props.fetch('title', '')}</h1> "
    iconed_list += items
    iconed_list += " </div> "

    iconed_list
end