from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Graph_Gtfs_Pl_V0_1_0 = CommandToolBuilder(tool="graph_gtfs.pl", base_command=["graph_gtfs.pl"], inputs=[ToolInput(tag="in_display_list_values", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc=": Display list of possible x and y values for graphs")), ToolInput(tag="in_load_gtfs_instead", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": Load GTFs instead of lists of GTFs")), ToolInput(tag="in_quick_load_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Quick load the gtf file.  Do not check them for errors.")), ToolInput(tag="in_load_resolution_default", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc=":  Load resolution from this file\ninstead of users .eval.rc or default")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graph_Gtfs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

