from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Directory, Int

Plaster_V0_1_0 = CommandToolBuilder(tool="plaster", base_command=["plaster"], inputs=[ToolInput(tag="in_realign", input_type=Boolean(optional=True), prefix="--realign", doc=InputDocumentation(doc="Realign all input genomes to the resulting pangenome\nto get a more accurate fragment mapping")), ToolInput(tag="in_align_only", input_type=Boolean(optional=True), prefix="--align-only", doc=InputDocumentation(doc="Used with --template. Does not append to pangenome,\njust produces tsv alignment.")), ToolInput(tag="in_template", input_type=String(optional=True), prefix="--template", doc=InputDocumentation(doc="seed genome to use")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output pan-genome fasta and metadata file stem (does\nnot include file extension)")), ToolInput(tag="in_work_dir", input_type=Directory(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="Directory to save nucmer outputs.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Minimum length of sequence attached to the pan-genome")), ToolInput(tag="in_max_frag_len", input_type=Int(optional=True), prefix="--max-frag-len", doc=InputDocumentation(doc="Maximum fragment length")), ToolInput(tag="in_id_cut_off", input_type=String(optional=True), prefix="--id-cutoff", doc=InputDocumentation(doc="Minimum identity to record alignment in metadata")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose output")), ToolInput(tag="in_input_files", input_type=String(), position=0, doc=InputDocumentation(doc="a list of input fasta file names. If there is one\nfile, it is assumed that this file contains a list of\ninput files separated by a newline"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output pan-genome fasta and metadata file stem (does\nnot include file extension)"))], container="quay.io/biocontainers/pan-plaster:1.1.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plaster_V0_1_0().translate("wdl")

