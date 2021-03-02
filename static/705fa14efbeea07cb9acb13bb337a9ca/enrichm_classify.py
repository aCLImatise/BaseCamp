from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean, String

Enrichm_Classify_V0_1_0 = CommandToolBuilder(tool="enrichm_classify", base_command=["enrichm", "classify"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Output logging information to this file.")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite previous run")), ToolInput(tag="in_genome_and_annotation_file", input_type=File(optional=True), prefix="--genome_and_annotation_file", doc=InputDocumentation(doc="Path to file containing a genome<tab>annotation list")), ToolInput(tag="in_genome_and_annotation_matrix", input_type=File(optional=True), prefix="--genome_and_annotation_matrix", doc=InputDocumentation(doc="Path to file containing a genome annotation matrix")), ToolInput(tag="in_custom_modules", input_type=File(optional=True), prefix="--custom_modules", doc=InputDocumentation(doc="Tab separated file containing module name, definition as the columns")), ToolInput(tag="in_cut_off", input_type=String(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Output only modules with greater than this percent of the requied KO groups (default = print all modules)")), ToolInput(tag="in_aggregate", input_type=Boolean(optional=True), prefix="--aggregate", doc=InputDocumentation(doc="Calculate the abundance of each pathway within each genome/sample (column)"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Output logging information to this file.")), ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enrichm_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

