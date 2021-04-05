from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Spring_Model_Py_V0_1_0 = CommandToolBuilder(tool="spring_model.py", base_command=["spring_model.py"], inputs=[ToolInput(tag="in_a_hhr", input_type=File(optional=True), prefix="--a_hhr", doc=InputDocumentation(doc="First HHR target file result")), ToolInput(tag="in_b_hhr", input_type=File(optional=True), prefix="--b_hhr", doc=InputDocumentation(doc="Second HHR target file result")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="PDB Database Index file (ffindex)")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="PDB Database files (ffdata)")), ToolInput(tag="in_cross", input_type=String(optional=True), prefix="--cross", doc=InputDocumentation(doc="PDB Cross Reference")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output model file")), ToolInput(tag="in_w_energy", input_type=String(optional=True), prefix="--wenergy", doc=InputDocumentation(doc="Weight Energy term")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--minscore", doc=InputDocumentation(doc="Minimum min-Z score threshold")), ToolInput(tag="in_max_tries", input_type=Int(optional=True), prefix="--maxtries", doc=InputDocumentation(doc="Maximum number of templates")), ToolInput(tag="in_max_clashes", input_type=Int(optional=True), prefix="--maxclashes", doc=InputDocumentation(doc="Maximum fraction of clashes")), ToolInput(tag="in_show_template", input_type=String(optional=True), prefix="--showtemplate", doc=InputDocumentation(doc="Add reference template to model structure")), ToolInput(tag="in_zipped", input_type=String(optional=True), prefix="--zipped", doc=InputDocumentation(doc="Zipped extension in PDB Database\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output model file"))], container="quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spring_Model_Py_V0_1_0().translate("wdl")

