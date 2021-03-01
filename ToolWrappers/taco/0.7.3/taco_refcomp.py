from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Boolean, String, File

Taco_Refcomp_V0_1_0 = CommandToolBuilder(tool="taco_refcomp", base_command=["taco_refcomp"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory for reference comparison output (default:\ntaco_compare)")), ToolInput(tag="in_num_processes", input_type=Int(optional=True), prefix="--num-processes", doc=InputDocumentation(doc="Run tool in parallel with N processes. (note: each\ncore processes 1 chromosome) (default: 1)")), ToolInput(tag="in_cp_at", input_type=Boolean(optional=True), prefix="--cpat", doc=InputDocumentation(doc="Run CPAT tool to for coding potential scoring. (CPAT\nfunction currently only supports Human, Mouse, and\nZebrafish) (WARNING: The CPAT tool can take over an\nhour) (default: False)")), ToolInput(tag="in_cp_at_species", input_type=String(optional=True), prefix="--cpat-species", doc=InputDocumentation(doc="Select either: human, mouse, zebrafish (default:\nhuman)")), ToolInput(tag="in_cp_at_genome", input_type=String(optional=True), prefix="--cpat-genome", doc=InputDocumentation(doc="Provide a genome fasta for the genome used to produce\nassemblies being compared. Required if '--cpat' used.\nCPAT uses this to obtain sequence for the provided\ntranscripts (default: None)")), ToolInput(tag="in_ref_gtf", input_type=File(optional=True), prefix="--ref-gtf", doc=InputDocumentation(doc="Reference GTF file to compare against (default: None)")), ToolInput(tag="in_test_gtf", input_type=File(optional=True), prefix="--test-gtf", doc=InputDocumentation(doc="GTF file used for comparison (default: None)\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory for reference comparison output (default:\ntaco_compare)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taco_Refcomp_V0_1_0().translate("wdl", allow_empty_container=True)

