from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bayestypertools_Addattributes_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_addAttributes", base_command=["bayesTyperTools", "addAttributes"], inputs=[ToolInput(tag="in_arg_variant_file", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --variant-file ] arg             variant file (vcf format).")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-prefix ] arg            output prefix.")), ToolInput(tag="in_compress_output_files", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.")), ToolInput(tag="in_genome_file", input_type=File(optional=True), prefix="--genome-file", doc=InputDocumentation(doc="reference genome file (fasta format) used for homopolymer length (HPL) calculation. If not specified HPL will not be")), ToolInput(tag="in_independent_samples_regex", input_type=String(optional=True), prefix="--independent-samples-regex", doc=InputDocumentation(doc="regular expression for matching independent samples (e.g. parents in a trio) used for absolute inbreeding coefficient\n(IBC) calculation. If not specified IBC will not be calculated.")), ToolInput(tag="in_trio_sample_info", input_type=String(optional=True), prefix="--trio-sample-info", doc=InputDocumentation(doc="trio sample id information used for concordance (CONC) calculation\n(<father>,<mother>,<child>:<father>,<mother>,<child>:...). If not specified CONC will not be calculated.\n")), ToolInput(tag="in_calculated_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--repeat-file arg                     repeatmasker file used for repeat annotation (RMA). If not specified RMA will not be annotated."))], outputs=[ToolOutput(tag="out_compress_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress_output_files", type_hint=File()), doc=OutputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Addattributes_V0_1_0().translate("wdl", allow_empty_container=True)

