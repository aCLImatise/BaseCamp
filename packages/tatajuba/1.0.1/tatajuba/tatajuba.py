from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, Directory

Tatajuba_V0_1_0 = CommandToolBuilder(tool="tatajuba", base_command=["tatajuba"], inputs=[ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="paired end (pairs of) files")), ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="--kmer", doc=InputDocumentation(doc="={2,...,32}            kmer size flanking each side of homopolymer (default=25)")), ToolInput(tag="in_minsize", input_type=Boolean(optional=True), prefix="--minsize", doc=InputDocumentation(doc="={1,...,32}         minimum homopolymer tract length to be compared (default=4)")), ToolInput(tag="in_min_reads", input_type=Int(optional=True), prefix="--minreads", doc=InputDocumentation(doc="minimum number of reads for tract+context to be considered (default=5)")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--maxdist", doc=InputDocumentation(doc="maximum distance between kmers of a flanking region to merge them into one context (default=1)")), ToolInput(tag="in_leven", input_type=Int(optional=True), prefix="--leven", doc=InputDocumentation(doc="levenshtein distance between flanking regions to merge them into one context (after ref genome mapping)")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="suggested number of threads (default is to let system decide; I may not honour your suggestion btw)")), ToolInput(tag="in_gff", input_type=Int(optional=True), prefix="--gff", doc=InputDocumentation(doc="reference genome file in GFF3, preferencially with sequence")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="reference genome file in fasta format, if absent from GFF3")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory, or 'random' for generating random dir name (default=current dir '.')"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory, or 'random' for generating random dir name (default=current dir '.')"))], container="quay.io/biocontainers/tatajuba:1.0.1--hbcae180_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tatajuba_V0_1_0().translate("wdl")

