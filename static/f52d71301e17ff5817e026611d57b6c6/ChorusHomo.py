from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int

Chorushomo_V0_1_0 = CommandToolBuilder(tool="ChorusHomo", base_command=["ChorusHomo"], inputs=[ToolInput(tag="in_jellyfish", input_type=File(optional=True), prefix="--jellyfish", doc=InputDocumentation(doc="The path where Jellyfish software installed")), ToolInput(tag="in_bwa", input_type=File(optional=True), prefix="--bwa", doc=InputDocumentation(doc="The path where BWA software installed")), ToolInput(tag="in_source", input_type=File(optional=True), prefix="--source", doc=InputDocumentation(doc="Fasta format genome file (GenomeA) which the probe\nwere generated from, should include all sequences from\ngenome")), ToolInput(tag="in_target", input_type=File(optional=True), prefix="--target", doc=InputDocumentation(doc="Fasta format genome file (GenomeB) which the probe\nwill be aligned to, should include all sequences from\ngenome")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="BED format input file, contains oligo probes generated\nfrom Chorus2")), ToolInput(tag="in_save", input_type=Directory(optional=True), prefix="--save", doc=InputDocumentation(doc="The output folder for saving results")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads or CPUs to use. (Default: 1)"))], outputs=[ToolOutput(tag="out_save", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_save", type_hint=File()), doc=OutputDocumentation(doc="The output folder for saving results"))], container="quay.io/biocontainers/chorus2:2.0.1--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chorushomo_V0_1_0().translate("wdl")

