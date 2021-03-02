from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

R_Beta_Diversity_Py_V0_1_0 = CommandToolBuilder(tool="r_beta_diversity.py", base_command=["r_beta_diversity.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var_exp", input_type=String(optional=True), prefix="--varExp", doc=InputDocumentation(doc="The experiment variable you want to analyse.")), ToolInput(tag="in_distance_methods", input_type=String(optional=True), prefix="--distance-methods", doc=InputDocumentation(doc="Comma separated values beta diversity methods\navailable in Phyloseq (see https://www.bioconductor.or\ng/packages/devel/bioc/manuals/phyloseq/man/phyloseq.pd\nf). [Default: bray,cc,unifrac,wunifrac].")), ToolInput(tag="in_r_data", input_type=File(optional=True), prefix="--rdata", doc=InputDocumentation(doc="The path of RData file containing a phyloseq object-\nthe result of FROGS Phyloseq Import Data")), ToolInput(tag="in_matrix_outdir", input_type=File(optional=True), prefix="--matrix-outdir", doc=InputDocumentation(doc="Path to output matrix file")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="Path to store resulting html file. [Default:\nbeta_diversity.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_matrix_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_matrix_outdir", type_hint=File()), doc=OutputDocumentation(doc="Path to output matrix file")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Beta_Diversity_Py_V0_1_0().translate("wdl", allow_empty_container=True)

