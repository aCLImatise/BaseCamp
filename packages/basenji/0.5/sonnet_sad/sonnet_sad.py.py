from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Directory, Boolean

Sonnet_Sad_Py_V0_1_0 = CommandToolBuilder(tool="sonnet_sad.py", base_command=["sonnet_sad.py"], inputs=[ToolInput(tag="in_slice_center_positions", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Slice center positions [Default: none]")), ToolInput(tag="in_genome_fasta_sequences", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Genome FASTA for sequences [Default:\n/usr/local/share/basenji//data/hg38.fa]")), ToolInput(tag="in_normalize_sad_scores", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Normalize SAD scores")), ToolInput(tag="in_output_directory_plots", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for tables and plots [Default: sad]")), ToolInput(tag="in_number_processes_passed", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of processes, passed by multi script")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="--pseudo", doc=InputDocumentation(doc="Log2 pseudocount [Default: 1]")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="Average forward and reverse complement predictions\n[Default: False]")), ToolInput(tag="in_shifts", input_type=Int(optional=True), prefix="--shifts", doc=InputDocumentation(doc="Ensemble prediction shifts [Default: 0]")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Comma-separated list of stats to save. [Default: SAD]")), ToolInput(tag="in_file_specifying_indexes", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="File specifying target indexes and labels in table\nformat\n")), ToolInput(tag="in_model", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_plots", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_plots", type_hint=File()), doc=OutputDocumentation(doc="Output directory for tables and plots [Default: sad]"))], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonnet_Sad_Py_V0_1_0().translate("wdl")

