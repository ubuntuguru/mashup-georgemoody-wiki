<gm:page title="Map Wiki" authenticate="true">

    <!--
       The map wiki application demonstrates the the ability to use the 
       map object to create wiki like experience for maps.
       @author: GME Team
    -->


  <div class="gm-app-header">
     <h1>Map Wiki</h1>
     <p>
       Add a new location by clicking the Add pin button on the map.
       Drag existing pins to move locations.
     </p>
  </div>

  <table width="100%">
    <tr>
      <td width="700px" style="padding:20px;">
        <gm:map id="mainMap" data="${Locations}" control="large"
            infotemplate="mapDetailTemplate" width="700px" height="500px" 
            lat="35.4607" lng="-12.6563" zoom="2" maptypes="true" create="true">
          <gm:handleEvent src="Locations"/>
         </gm:map>
      </td>
      <td valign="top" align="left" style="padding:20 20 20 0;">
        <gm:list id="Locations" template="LocationsTemplate" data="${app}/markers">
          <gm:handleEvent src="mainMap"/>
        </gm:list>
      </td>
    </tr>
  </table>

  <gm:template id="mapDetailTemplate">
    <table width="300">
      <tr>
        <td colspan="2"><gm:text ref="atom:title"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:rating ref="gd:rating"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:textarea ref="atom:content"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:editButtons editonly="true" text="true"/></td>
      </tr>
    </table>
  </gm:template>

  <gm:template id="LocationsTemplate">
    <table width="100%" class="gm-table">
      <thead>
        <tr>
          <td width="40"></td>
          <td>Name</td>
          <td width="90">Rating</td>
          <td width="45"></td>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <td colspan="4" align="right"><gm:create label="Add"/></td>
        </tr>
      </tfoot>
      <tbody repeat="true">
        <tr>
          <td align="center"><gm:toggle/></td>
          <td><gm:text ref="atom:title" hint="Enter title."/></td>
          <td><gm:rating ref="gd:rating"/></td>
          <td><gm:editButtons/></td>
        </tr>     
        <tr class="gm-toggled">
          <td colspan="4"><gm:textarea ref="atom:content"/></td>
        </tr>
      </tbody>
    </table>
  </gm:template>

  </gm:page>

