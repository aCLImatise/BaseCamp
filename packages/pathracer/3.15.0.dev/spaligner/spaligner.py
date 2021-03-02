from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Directory

Spaligner_V0_1_0 = CommandToolBuilder(tool="spaligner", base_command=["spaligner"], inputs=[ToolInput(tag="in_datatype", input_type=String(optional=True), prefix="--datatype", doc=InputDocumentation(doc="type of sequences: nanopore, pacbio")), ToolInput(tag="in_sequences", input_type=File(optional=True), prefix="--sequences", doc=InputDocumentation(doc="path to fasta/fastq file with sequences")), ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="path to GFA-file or SPAdes saves folder")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="graph k-mer size (odd value)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory\n"))], container="quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spaligner_V0_1_0().translate("wdl")

