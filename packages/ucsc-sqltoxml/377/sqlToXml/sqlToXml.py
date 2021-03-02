from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Sqltoxml_V0_1_0 = CommandToolBuilder(tool="sqlToXml", base_command=["sqlToXml"], inputs=[ToolInput(tag="in_top_tag", input_type=String(optional=True), prefix="-topTag", doc=InputDocumentation(doc="- Give the top level XML tag the given name.  By\ndefault it will be the same as the database name.")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="-query", doc=InputDocumentation(doc="- Instead of dumping whole database, just dump those\nrecords matching SQL select statement in file.sql.\nThis statement should be of the form:\nselect * from table where ...\nor\nselect table.* from table,otherTables where ...\nWhere the table is the same as the table in the first\nline of dumpSpec.")), ToolInput(tag="in_tab", input_type=Int(optional=True), prefix="-tab", doc=InputDocumentation(doc="- number of spaces betweeen tabs in xml.dumpSpec - by default it's 8.\n(It may be best just to avoid tabs in that file though.)")), ToolInput(tag="in_max_list", input_type=Int(optional=True), prefix="-maxList", doc=InputDocumentation(doc="- This will limit any lists in the output to no more than\nsize N.  This is mostly just for testing.\n")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dump_spec_do_tod", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqltoxml_V0_1_0().translate("wdl", allow_empty_container=True)

