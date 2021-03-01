from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, String

Mirfix_Py_V0_1_0 = CommandToolBuilder(tool="MIRfix.py", base_command=["MIRfix.py"], inputs=[ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of parallel processes to run")), ToolInput(tag="in_families", input_type=File(optional=True), prefix="--families", doc=InputDocumentation(doc="Path to list of families to work on")), ToolInput(tag="in_fam_dir", input_type=Directory(optional=True), prefix="--famdir", doc=InputDocumentation(doc="Directory where family files are located")), ToolInput(tag="in_genomes", input_type=String(optional=True), prefix="--genomes", doc=InputDocumentation(doc="Genome FASTA files to parse")), ToolInput(tag="in_mapping", input_type=String(optional=True), prefix="--mapping", doc=InputDocumentation(doc="Mapping between precursor and families")), ToolInput(tag="in_mature", input_type=String(optional=True), prefix="--mature", doc=InputDocumentation(doc="FASTA files containing mature sequences")), ToolInput(tag="in_mature_dir", input_type=Directory(optional=True), prefix="--maturedir", doc=InputDocumentation(doc="Directory of matures")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory for output")), ToolInput(tag="in_extension", input_type=String(optional=True), prefix="--extension", doc=InputDocumentation(doc="Extension of nucleotides for precursor cutting")), ToolInput(tag="in_logdir", input_type=Directory(optional=True), prefix="--logdir", doc=InputDocumentation(doc="Directory to write logfiles to")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Set log level\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Directory for output"))], container="quay.io/biocontainers/mirfix:2.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirfix_Py_V0_1_0().translate("wdl")

