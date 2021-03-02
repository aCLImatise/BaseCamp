from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sketchy_Survey_Mashdist_V0_1_0 = CommandToolBuilder(tool="sketchy_survey_mashdist", base_command=["sketchy", "survey", "mashdist"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to list containing path to genomes per line\n[required]  [required]")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to lineage index file [required]  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output file [required]")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer_size", doc=InputDocumentation(doc="K-mer size to estimate genome distance between\nall genomes")), ToolInput(tag="in_sketch_size", input_type=Int(optional=True), prefix="--sketch_size", doc=InputDocumentation(doc="Sketch size to estimate genome distance between\nall genomes"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output file [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Survey_Mashdist_V0_1_0().translate("wdl", allow_empty_container=True)

