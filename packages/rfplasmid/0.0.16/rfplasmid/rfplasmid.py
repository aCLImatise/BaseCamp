from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, Int

Rfplasmid_V0_1_0 = CommandToolBuilder(tool="rfplasmid", base_command=["rfplasmid"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="define species (required)")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="directory with input fasta files (required)")), ToolInput(tag="in_species_list", input_type=Boolean(optional=True), prefix="--specieslist", doc=InputDocumentation(doc="list of available species models")), ToolInput(tag="in_jelly", input_type=Boolean(optional=True), prefix="--jelly", doc=InputDocumentation(doc="run jellyfish as kmer-count (faster)")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="specify output directory")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="no cleanup of intermediate files")), ToolInput(tag="in_training", input_type=Boolean(optional=True), prefix="--training", doc=InputDocumentation(doc="trainings mode Random Forest")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="specify number of threads to be used, default is max\navailable threads up to 16 threads"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="specify output directory"))], container="quay.io/biocontainers/rfplasmid:0.0.16--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rfplasmid_V0_1_0().translate("wdl")

