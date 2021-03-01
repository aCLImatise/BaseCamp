from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Filter_Unique_Basepairs_Pl_V0_1_0 = CommandToolBuilder(tool="filter_unique_basepairs.pl", base_command=["filter_unique_basepairs.pl"], inputs=[ToolInput(tag="in_tsv", input_type=Boolean(optional=True), prefix="--tsv", doc=InputDocumentation(doc="The tsv file containing the snv_alignment")), ToolInput(tag="in_tree", input_type=Boolean(optional=True), prefix="--tree", doc=InputDocumentation(doc="The .tre file that contains the data for making the tree")), ToolInput(tag="in_valid", input_type=Boolean(optional=True), prefix="--valid", doc=InputDocumentation(doc="Include all matches, including non-valid entries")), ToolInput(tag="in_file_matching_positions", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="The file the matching positions will be written to")), ToolInput(tag="in_vcf", input_type=Boolean(optional=True), prefix="--vcf", doc=InputDocumentation(doc="A VCF input file in the following format: strain_name=file_path")), ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="--directory", doc=InputDocumentation(doc="A folder containing all of the tabular snveff outputs")), ToolInput(tag="in_strains", input_type=Boolean(optional=True), prefix="--strains", doc=InputDocumentation(doc="The strains you wish to find unique basepairs in")), ToolInput(tag="in_clade", input_type=File(optional=True), prefix="--clade", doc=InputDocumentation(doc="The output name for the clades tree file produced")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress all warnings")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_clade", output_type=File(optional=True), selector=InputSelector(input_to_select="in_clade", type_hint=File()), doc=OutputDocumentation(doc="The output name for the clades tree file produced"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Unique_Basepairs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

