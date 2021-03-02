from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bayestypertools_Convertallele_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_convertAllele", base_command=["bayesTyperTools", "convertAllele"], inputs=[ToolInput(tag="in_arg_variant_file", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --variant-file ] arg             variant file (vcf format).")), ToolInput(tag="in_arg_reference_genome", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --genome-file ] arg              reference genome file (fasta format).")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-prefix ] arg            output prefix.")), ToolInput(tag="in_compress_output_files", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.")), ToolInput(tag="in_alt_file", input_type=File(optional=True), prefix="--alt-file", doc=InputDocumentation(doc="alternative allele file (fasta format). Sequence name in fasta (>'name') should match <'name'>.")), ToolInput(tag="in_mei_file", input_type=File(optional=True), prefix="--mei-file", doc=InputDocumentation(doc="mobile element insertion(s) file (fasta format). Sequence name in fasta (>'name') should match <INS:ME:'name'>.")), ToolInput(tag="in_keep_imprecise", input_type=Boolean(optional=True), prefix="--keep-imprecise", doc=InputDocumentation(doc="[=arg(=1)] (=0)      do not filter imprecise variants")), ToolInput(tag="in_keep_partial", input_type=Boolean(optional=True), prefix="--keep-partial", doc=InputDocumentation(doc="[=arg(=1)] (=0)        keep partial insertions where the center and length is unknown (Manta output supported). The known left and right side\nis connected with ten N's.\n"))], outputs=[ToolOutput(tag="out_compress_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress_output_files", type_hint=File()), doc=OutputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Convertallele_V0_1_0().translate("wdl", allow_empty_container=True)

