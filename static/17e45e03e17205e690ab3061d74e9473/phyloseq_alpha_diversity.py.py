from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Phyloseq_Alpha_Diversity_Py_V0_1_0 = CommandToolBuilder(tool="phyloseq_alpha_diversity.py", base_command=["phyloseq_alpha_diversity.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var_exp", input_type=String(optional=True), prefix="--varExp", doc=InputDocumentation(doc="The experiment variable used to aggregate sample\ndiversities.")), ToolInput(tag="in_indices_alpha_diversity", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ALPHA_MEASURES [ALPHA_MEASURES ...]], --alpha-measures [ALPHA_MEASURES [ALPHA_MEASURES ...]]\nThe indices of alpha diversity. Available indices :\nObserved, Chao1, Shannon, InvSimpson, Simpson, ACE,\nFisher. [Default: ['Observed', 'Chao1', 'Shannon',\n'InvSimpson']]")), ToolInput(tag="in_r_data", input_type=File(optional=True), prefix="--rdata", doc=InputDocumentation(doc="The path of RData file containing a phyloseq object-\nthe result of FROGS Phyloseq Import Data")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nphyloseq_alpha_diversity.nb.html]")), ToolInput(tag="in_alpha_out", input_type=File(optional=True), prefix="--alpha-out", doc=InputDocumentation(doc="The path to store resulting data file containing alpha\ndiversity table. [Default:\nphyloseq_alpha_diversity.tsv]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Alpha_Diversity_Py_V0_1_0().translate("wdl")

