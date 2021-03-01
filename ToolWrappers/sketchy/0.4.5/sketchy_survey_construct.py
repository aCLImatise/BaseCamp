from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Sketchy_Survey_Construct_V0_1_0 = CommandToolBuilder(tool="sketchy_survey_construct", base_command=["sketchy", "survey", "construct"], inputs=[ToolInput(tag="in_directory", input_type=File(optional=True), prefix="--directory", doc=InputDocumentation(doc="Input directory with collected output from Pathfinder")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Tab-delimited genotype feature index for Sketchy")), ToolInput(tag="in_template", input_type=String(optional=True), prefix="--template", doc=InputDocumentation(doc="Use a configuration template: saureus, kpneumoniae,")), ToolInput(tag="in_intersect", input_type=Boolean(optional=True), prefix="--intersect", doc=InputDocumentation(doc="Take minimum intersection of all specified column")), ToolInput(tag="in_survey", input_type=String(), position=0, doc=InputDocumentation(doc="[required]")), ToolInput(tag="in_m_tuberculosis", input_type=String(), position=1, doc=InputDocumentation(doc="-m, --missing TEXT    Set a missing character [-]")), ToolInput(tag="in_values", input_type=String(), position=2, doc=InputDocumentation(doc="--help                Show this message and exit."))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Survey_Construct_V0_1_0().translate("wdl")

