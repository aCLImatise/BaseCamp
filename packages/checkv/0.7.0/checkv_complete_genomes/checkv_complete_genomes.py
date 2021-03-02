from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Checkv_Complete_Genomes_V0_1_0 = CommandToolBuilder(tool="checkv_complete_genomes", base_command=["checkv", "complete_genomes"], inputs=[ToolInput(tag="in_tr_min_len", input_type=Int(optional=True), prefix="--tr_min_len", doc=InputDocumentation(doc="Min length of TR (20)")), ToolInput(tag="in_tr_max_count", input_type=Int(optional=True), prefix="--tr_max_count", doc=InputDocumentation(doc="Max occurences of TR per contig (8)")), ToolInput(tag="in_tr_max_am_big", input_type=Float(optional=True), prefix="--tr_max_ambig", doc=InputDocumentation(doc="Max fraction of TR composed of Ns (0.20)")), ToolInput(tag="in_tr_max_base_freq", input_type=Float(optional=True), prefix="--tr_max_basefreq", doc=InputDocumentation(doc="Max fraction of TR composed of single nucleotide\n(0.75)")), ToolInput(tag="in_km_er_max_freq", input_type=Float(optional=True), prefix="--kmer_max_freq", doc=InputDocumentation(doc="Max kmer frequency (1.5). Computed by splitting genome\ninto kmers, counting occurence of each kmer, and\ntaking the average count. Expected value of 1.0 for no\nduplicated regions; 2.0 for the same genome repeated\nback-to-back")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input viral sequences in FASTA format")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory"))], outputs=[], container="quay.io/biocontainers/checkv:0.7.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkv_Complete_Genomes_V0_1_0().translate("wdl")

