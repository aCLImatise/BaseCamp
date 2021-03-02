from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cat_Add_Names_V0_1_0 = CommandToolBuilder(tool="CAT_add_names", base_command=["CAT", "add_names"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Path to input file. Can be either classification\noutput file or ORF2LCA output file.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Path to output file.")), ToolInput(tag="in_taxonomy_folder", input_type=Boolean(optional=True), prefix="--taxonomy_folder", doc=InputDocumentation(doc="Path to folder that contains taxonomy files.")), ToolInput(tag="in_only_official", input_type=Boolean(optional=True), prefix="--only_official", doc=InputDocumentation(doc="Only output official rank names (i.e., superkingdom,\nphylum, class, order, family, genus, species).")), ToolInput(tag="in_exclude_scores", input_type=File(optional=True), prefix="--exclude_scores", doc=InputDocumentation(doc="Do not include bit-score support scores in the lineage\nof a classification output file.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite existing files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress verbosity."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file.")), ToolOutput(tag="out_exclude_scores", output_type=File(optional=True), selector=InputSelector(input_to_select="in_exclude_scores", type_hint=File()), doc=OutputDocumentation(doc="Do not include bit-score support scores in the lineage\nof a classification output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_Add_Names_V0_1_0().translate("wdl", allow_empty_container=True)

