from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Reseq_Queryprofile_V0_1_0 = CommandToolBuilder(tool="reseq_queryProfile", base_command=["reseq", "queryProfile"], inputs=[ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --threads ] arg (=0) Number of threads used (0=auto)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="(=4)      Sets the level of verbosity (4=everything,\n0=nothing)")), ToolInput(tag="in_maxlen_deletion", input_type=Boolean(optional=True), prefix="--maxLenDeletion", doc=InputDocumentation(doc="Output lengths of longest detected deletion to")), ToolInput(tag="in_arg_reference_sequences", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --ref ] arg          Reference sequences in fasta format (gz and bz2\nsupported)")), ToolInput(tag="in_refseq_bias", input_type=File(optional=True), prefix="--refSeqBias", doc=InputDocumentation(doc="Output reference sequence bias to file (tsv format;\n- for stdout)")), ToolInput(tag="in_arg_reseq_statistics", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --stats ] arg        Reseq statistics file to extract reference sequence\nbias\n")), ToolInput(tag="in_stdout", input_type=String(), position=0, doc=InputDocumentation(doc="--maxReadLength           Output lengths of longest detected read to stdout"))], outputs=[ToolOutput(tag="out_refseq_bias", output_type=File(optional=True), selector=InputSelector(input_to_select="in_refseq_bias", type_hint=File()), doc=OutputDocumentation(doc="Output reference sequence bias to file (tsv format;\n- for stdout)"))], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reseq_Queryprofile_V0_1_0().translate("wdl")

