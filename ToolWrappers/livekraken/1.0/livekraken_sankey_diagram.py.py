from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Livekraken_Sankey_Diagram_Py_V0_1_0 = CommandToolBuilder(tool="livekraken_sankey_diagram.py", base_command=["livekraken_sankey_diagram.py"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="Used to list input files, can be used several times to\ninput an ordered list of files")), ToolInput(tag="in_color", input_type=Boolean(optional=True), prefix="--color", doc=InputDocumentation(doc="Used to switch from red-green to red-blue color scheme")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="Used to 'compress' unclassified nodes by only keeping\na number of reads corresponding to the sum of flows\nfrom/to nodes other than unclassified.")), ToolInput(tag="in_rank", input_type=String(optional=True), prefix="--rank", doc=InputDocumentation(doc="Used to set on which level to bin the classified reads")), ToolInput(tag="in_top", input_type=String(optional=True), prefix="--top", doc=InputDocumentation(doc="Used to determine the top x nodes to display for every\ncycle (plus one node serving as bin for everyting\nelse)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Used to set the output directory path for the html and\njson file")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="Used to set the path to the names.dmp for taxonomic\nresolution")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="Used to set the path to the nodes.dmp for taxonomic\nresolution\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Used to set the output directory path for the html and\njson file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Livekraken_Sankey_Diagram_Py_V0_1_0().translate("wdl", allow_empty_container=True)

