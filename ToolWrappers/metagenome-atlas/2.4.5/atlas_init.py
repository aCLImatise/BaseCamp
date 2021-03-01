from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Atlas_Init_V0_1_0 = CommandToolBuilder(tool="atlas_init", base_command=["atlas", "init"], inputs=[ToolInput(tag="in_db_dir", input_type=File(optional=True), prefix="--db-dir", doc=InputDocumentation(doc="location to store databases (need ~50GB)\n[default: /databases]")), ToolInput(tag="in_working_dir", input_type=File(optional=True), prefix="--working-dir", doc=InputDocumentation(doc="location to run atlas")), ToolInput(tag="in_assembler", input_type=Boolean(optional=True), prefix="--assembler", doc=InputDocumentation(doc="[megahit|spades]    assembler  [default: spades]")), ToolInput(tag="in_data_type", input_type=Boolean(optional=True), prefix="--data-type", doc=InputDocumentation(doc="[metagenome|metatranscriptome]\nsample data type  [default: metagenome]")), ToolInput(tag="in_interleaved_fast_q", input_type=Boolean(optional=True), prefix="--interleaved-fastq", doc=InputDocumentation(doc="fastq files are paired-end in one files\n(interleaved)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use per multi-threaded")), ToolInput(tag="in_job", input_type=String(), position=0, doc=InputDocumentation(doc="--skip-qc                       Skip QC, if reads are already pre-processed"))], outputs=[], container="quay.io/biocontainers/metagenome-atlas:2.4.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Init_V0_1_0().translate("wdl")

