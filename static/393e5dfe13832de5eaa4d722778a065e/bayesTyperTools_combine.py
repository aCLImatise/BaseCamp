from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bayestypertools_Combine_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_combine", base_command=["bayesTyperTools", "combine"], inputs=[ToolInput(tag="in_arg_commaseparated_list", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --variant-files ] arg            comma-separated list of name and variant file (vcf format) pairs (<name>:<file>).")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-prefix ] arg            output prefix.")), ToolInput(tag="in_compress_output_files", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.")), ToolInput(tag="in_filter_ambiguous_alleles", input_type=Boolean(optional=True), prefix="--filter-ambiguous-alleles", doc=InputDocumentation(doc="[=arg(=1)] (=0)\nfilter alleles (including reference) with ambiguous nucleotides (non ACGT).\n"))], outputs=[ToolOutput(tag="out_compress_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress_output_files", type_hint=File()), doc=OutputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Combine_V0_1_0().translate("wdl", allow_empty_container=True)

