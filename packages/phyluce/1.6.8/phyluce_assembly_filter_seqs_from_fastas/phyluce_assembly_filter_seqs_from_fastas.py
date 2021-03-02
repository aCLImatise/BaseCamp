from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String, Boolean

Phyluce_Assembly_Filter_Seqs_From_Fastas_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_filter_seqs_from_fastas", base_command=["phyluce_assembly_filter_seqs_from_fastas"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The directory containing the FASTA sequences to")), ToolInput(tag="in_filtered_sequences_file", input_type=File(optional=True), prefix="--filtered-sequences-file", doc=InputDocumentation(doc="The file that will contain names of sequences (and\nloci) removed")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores to use")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_trim_length", input_type=Int(optional=True), prefix="--trim-length", doc=InputDocumentation(doc="Proportion of the median length that will serve as cut\noff (default=0.5)")), ToolInput(tag="in_count", input_type=Int(optional=True), prefix="--count", doc=InputDocumentation(doc="Number of sequences per locus that will serve as cut\noff (default=4).\n")), ToolInput(tag="in_var_7", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="")), ToolInput(tag="in__filteredsequencesfile", input_type=String(), position=0, doc=InputDocumentation(doc="--filtered-sequences-file")), ToolInput(tag="in_short_sequences_file", input_type=String(), position=1, doc=InputDocumentation(doc="[--cores CORES]")), ToolInput(tag="in_filter_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--output OUTPUT       An output directory to hold the converted alignments."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Filter_Seqs_From_Fastas_V0_1_0().translate("wdl", allow_empty_container=True)

