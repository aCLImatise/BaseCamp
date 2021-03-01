from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pybel_Serialize_V0_1_0 = CommandToolBuilder(tool="pybel_serialize", base_command=["pybel", "serialize"], inputs=[ToolInput(tag="in_csv", input_type=File(optional=True), prefix="--csv", doc=InputDocumentation(doc="Path to output a CSV file.")), ToolInput(tag="in_s_if", input_type=File(optional=True), prefix="--sif", doc=InputDocumentation(doc="Path to output an SIF file.")), ToolInput(tag="in_g_sea", input_type=File(optional=True), prefix="--gsea", doc=InputDocumentation(doc="Path to output a GRP file for gene set enrichment analysis.")), ToolInput(tag="in_graph_ml", input_type=File(optional=True), prefix="--graphml", doc=InputDocumentation(doc="Path to output a GraphML file. Use .graphml for Cytoscape.")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Path to output a node-link JSON file.")), ToolInput(tag="in_bel", input_type=File(optional=True), prefix="--bel", doc=InputDocumentation(doc="Output canonical BEL.")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_csv", type_hint=File()), doc=OutputDocumentation(doc="Path to output a CSV file.")), ToolOutput(tag="out_s_if", output_type=File(optional=True), selector=InputSelector(input_to_select="in_s_if", type_hint=File()), doc=OutputDocumentation(doc="Path to output an SIF file.")), ToolOutput(tag="out_g_sea", output_type=File(optional=True), selector=InputSelector(input_to_select="in_g_sea", type_hint=File()), doc=OutputDocumentation(doc="Path to output a GRP file for gene set enrichment analysis.")), ToolOutput(tag="out_graph_ml", output_type=File(optional=True), selector=InputSelector(input_to_select="in_graph_ml", type_hint=File()), doc=OutputDocumentation(doc="Path to output a GraphML file. Use .graphml for Cytoscape.")), ToolOutput(tag="out_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_json", type_hint=File()), doc=OutputDocumentation(doc="Path to output a node-link JSON file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Serialize_V0_1_0().translate("wdl", allow_empty_container=True)

