from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cytoscape_Sh_V0_1_0 = CommandToolBuilder(tool="cytoscape.sh", base_command=["cytoscape.sh"], inputs=[ToolInput(tag="in_session", input_type=File(optional=True), prefix="--session", doc=InputDocumentation(doc="Load a cytoscape session (.cys) file.")), ToolInput(tag="in_network", input_type=File(optional=True), prefix="--network", doc=InputDocumentation(doc="Load a network file (any format).")), ToolInput(tag="in_props", input_type=File(optional=True), prefix="--props", doc=InputDocumentation(doc="Load cytoscape properties file (Java properties\nformat) or individual property: -P name=value.")), ToolInput(tag="in_viz_map", input_type=File(optional=True), prefix="--vizmap", doc=InputDocumentation(doc="Load vizmap properties file (Cytoscape VizMap\nformat).")), ToolInput(tag="in_script", input_type=File(optional=True), prefix="--script", doc=InputDocumentation(doc="Execute commands from script file.")), ToolInput(tag="in_rest", input_type=String(optional=True), prefix="--rest", doc=InputDocumentation(doc="Start a rest service.")), ToolInput(tag="in_cytoscape_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cytoscape_Sh_V0_1_0().translate("wdl")

