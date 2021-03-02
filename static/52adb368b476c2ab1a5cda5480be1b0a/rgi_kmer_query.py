from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Rgi_Kmer_Query_V0_1_0 = CommandToolBuilder(tool="rgi_kmer_query", base_command=["rgi", "kmer_query"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file (bam file from RGI*BWT, json file of RGI\nresults, fasta file of sequences)")), ToolInput(tag="in_bwt", input_type=Boolean(optional=True), prefix="--bwt", doc=InputDocumentation(doc="Specify if the input file for analysis is a bam file\ngenerated from RGI*BWT")), ToolInput(tag="in_specify_is_rgi", input_type=Boolean(optional=True), prefix="--rgi", doc=InputDocumentation(doc="Specify if the input file is a RGI results json file")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Specify if the input file is a fasta file of sequences")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer_size", doc=InputDocumentation(doc="length of k")), ToolInput(tag="in_minimum", input_type=Int(optional=True), prefix="--minimum", doc=InputDocumentation(doc="Minimum number of kmers in the called category for the\nclassification to be made (default=10).")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (CPUs) to use (default=1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="use local database (default: uses database in\nexecutable directory)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode")), ToolInput(tag="in_var_10", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Kmer_Query_V0_1_0().translate("wdl", allow_empty_container=True)

