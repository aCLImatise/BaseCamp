from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean, String, File

Sonnet_Sat_Vcf_Py_V0_1_0 = CommandToolBuilder(tool="sonnet_sat_vcf.py", base_command=["sonnet_sat_vcf.py"], inputs=[ToolInput(tag="in_nucleotides_downstream_mutate", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Nucleotides downstream of center sequence to mutate\n[Default: 0]")), ToolInput(tag="in_figure_width", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Figure width [Default: 20]")), ToolInput(tag="in_fone", input_type=Int(optional=True), prefix="--f1", doc=InputDocumentation(doc="Genome FASTA which which major allele sequences will be")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory [Default: sat_vcf]")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="Ensemble forward and reverse complement predictions\n[Default: False]")), ToolInput(tag="in_shifts", input_type=Int(optional=True), prefix="--shifts", doc=InputDocumentation(doc="Ensemble prediction shifts [Default: 0]")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Comma-separated list of stats to save. [Default: sum]")), ToolInput(tag="in_file_specifying_indexes", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="File specifying target indexes and labels in table")), ToolInput(tag="in_format", input_type=String(), position=2, doc=InputDocumentation(doc="-u MUT_UP           Nucleotides upstream of center sequence to mutate"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory [Default: sat_vcf]"))], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonnet_Sat_Vcf_Py_V0_1_0().translate("wdl")

