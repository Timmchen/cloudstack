<%@ page import="java.util.*" %>

<%@ page import="com.cloud.utils.*" %>

<%
    Locale browserLocale = request.getLocale();
    CloudResourceBundle t = CloudResourceBundle.getBundle("resources/resource", browserLocale);
%>



<div class="main_title" id="right_panel_header">
    
    <div class="main_titleicon">
        <img src="images/title_diskofferingicon.gif" alt="Disk Offering" /></div>
    
    <h1>
        Network Offering
    </h1>
</div>
<div class="contentbox" id="right_panel_content">
    <div class="info_detailbox errorbox" id="after_action_info_container_on_top" style="display: none">
        <p id="after_action_info">
        </p>
    </div>
    <div class="tabbox" style="margin-top: 15px;">
        <div class="content_tabs on">
            <%=t.t("details")%></div>
    </div>
    <div id="tab_content_details">
    	<div id="tab_spinning_wheel" class="rightpanel_mainloader_panel" style="display: none;">
            <div class="rightpanel_mainloaderbox">
                <div class="rightpanel_mainloader_animatedicon">
                </div>
                <p>
                    Loading &hellip;</p>
            </div>
        </div>
        <div id="tab_container"> 
	        <div class="grid_container">
	        	<div class="grid_header">
	            	<div id="grid_header_title" class="grid_header_title">(title)</div>
	                <div id="action_link" class="grid_actionbox" id="account_action_link">
	                    <div class="grid_actionsdropdown_box" id="action_menu" style="display: none;">
	                        <ul class="actionsdropdown_boxlist" id="action_list">
	                        	<li><%=t.t("no.available.actions")%></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="gridheader_loaderbox" id="spinning_wheel" style="border: 1px solid #999;
	                display: none;">
	                    <div class="gridheader_loader" id="Div1">
	                    </div>
	                    <p id="description">
	                        Waiting &hellip;</p>
	                </div>
	            </div>
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        <%=t.t("ID")%>:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="id">
	                    </div>
	                </div>
	            </div>
	            <div class="grid_rows even">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        <%=t.t("name")%>:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="name">
	                    </div>                    
	                    <input class="text" id="name_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="name_edit_errormsg" style="display:none"></div>                       
	                </div>
	            </div>
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        <%=t.t("display.text")%>:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="displaytext">
	                    </div>                    
	                    <input class="text" id="displaytext_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="displaytext_edit_errormsg" style="display:none"></div>                       
	                </div>
	            </div>
	            
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        Type:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="type">
	                    </div>
	                </div>
	            </div>
	            
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        Traffic Type:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="traffictype">
	                    </div>
	                </div>
	            </div>
	            
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        Is Default:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="isdefault">
	                    </div>
	                </div>
	            </div>
	            
	            <div class="grid_rows odd">
	                <div class="grid_row_cell" style="width: 20%;">
	                    <div class="row_celltitles">
	                        Specify VLAN:</div>
	                </div>
	                <div class="grid_row_cell" style="width: 79%;">
	                    <div class="row_celltitles" id="specifyvlan">
	                    </div>
	                </div>
	            </div>
	           
	        </div>        
	        <div class="grid_botactionpanel">
	        	<div class="gridbot_buttons" id="save_button" style="display:none;">Save</div>
	            <div class="gridbot_buttons" id="cancel_button" style="display:none;">Cancel</div>
	        </div>  
        </div>
    </div>
</div>


<!-- advanced search template (begin) -->
<div id="advanced_search_template" class="adv_searchpopup" style="display: none;">
    <div class="adv_searchformbox">
        <h3>
            Advance Search</h3>
        <a id="advanced_search_close" href="#">Close </a>
        <form action="#" method="post">
        <ol>
            <li>
                <label>
                    Name:</label>
                <input class="text" type="text" id="adv_search_name" />
            </li>           
            <li id="adv_search_domain_li" style="display: none;">
                <label>
                    Domain:</label>
                <select class="select" id="adv_search_domain">
                </select>
            </li>           
        </ol>
        </form>
        <div class="adv_search_actionbox">
            <div class="adv_searchpopup_button" id="adv_search_button">
            </div>
        </div>
    </div>
</div>
<!-- advanced search template (end) -->
