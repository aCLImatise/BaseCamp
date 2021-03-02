from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bseqc2_V0_1_0 = CommandToolBuilder(tool="bseqc2", base_command=["bseqc2"], inputs=[ToolInput(tag="in_arg_input_bam", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --infile ] arg               Input BAM file.")), ToolInput(tag="in_arg_output_statistics", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg              Output statistics.")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg            Reference FASTA file. This option is")), ToolInput(tag="in_arg_number_first", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be\nexamined. Be aware of extremely low CpG\nmethylation levels when chrM is the first\nchromosome. Default: 20000000.")), ToolInput(tag="in_arg_rscript_defaultbindirbseqcmbiasplotr", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --rscript ] arg              Rscript for mbias plot. Default:\n`$bindir/bseqc2mbiasplot.R`.")), ToolInput(tag="in_required_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-l [ --length ] arg (=150)        Read length. Length of the query sequence "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bseqc2_V0_1_0().translate("wdl", allow_empty_container=True)

