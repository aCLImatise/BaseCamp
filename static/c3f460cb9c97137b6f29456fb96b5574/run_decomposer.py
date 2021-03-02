from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Run_Decomposer_V0_1_0 = CommandToolBuilder(tool="run_decomposer", base_command=["run_decomposer"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (by default 1)")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output tsv-file (by default final_decomposition.tsv)")), ToolInput(tag="in_min_identity", input_type=Int(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="only monomer alignments with percent identity >=\nMIN_IDENTITY are printed (by default MIN_IDENTITY=0)")), ToolInput(tag="in_scoring", input_type=Int(optional=True), prefix="--scoring", doc=InputDocumentation(doc="set scoring scheme for SD in the format\n'insertion,deletion,mismatch,match' (by default\n'-1,-1,-1,1')")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch-size", doc=InputDocumentation(doc="set size of the batch in parallelization (by default\n5000)")), ToolInput(tag="in_fast", input_type=Boolean(optional=True), prefix="--fast", doc=InputDocumentation(doc="doesn't generate second best monomer and homopolymer\nscores\n")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="fasta-file with long reads or genomic sequences")), ToolInput(tag="in_monomers", input_type=String(), position=1, doc=InputDocumentation(doc="fasta-file with monomers"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output tsv-file (by default final_decomposition.tsv)"))], container="quay.io/biocontainers/stringdecomposer:1.0.0--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Decomposer_V0_1_0().translate("wdl")

