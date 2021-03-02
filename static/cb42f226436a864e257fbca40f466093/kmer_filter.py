from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Kmer_Filter_V0_1_0 = CommandToolBuilder(tool="kmer_filter", base_command=["kmer_filter"], inputs=[ToolInput(tag="in_rare", input_type=Boolean(optional=True), prefix="--rare", doc=InputDocumentation(doc=": turn on filtering based on rare k-mers.")), ToolInput(tag="in_abundant", input_type=Boolean(optional=True), prefix="--abundant", doc=InputDocumentation(doc=": turn on filtering based on abundant k-mers.")), ToolInput(tag="in_k_len", input_type=Int(optional=True), prefix="--k-len", doc=InputDocumentation(doc=": specify k-mer size (default 15).")), ToolInput(tag="in_max_k_freq", input_type=Int(optional=True), prefix="--max-k-freq", doc=InputDocumentation(doc=": specify the number of times a kmer must occur to be considered abundant (default 20,000).")), ToolInput(tag="in_min_lim", input_type=Int(optional=True), prefix="--min-lim", doc=InputDocumentation(doc=": specify number of rare kmers occuring in a row required to discard a read (default 80% of the k-mer length).")), ToolInput(tag="in_max_lim", input_type=Int(optional=True), prefix="--max-lim", doc=InputDocumentation(doc=": specify number of abundant kmers required to discard a read (default 80% of the k-mers in a read).")), ToolInput(tag="in_normalize", input_type=String(optional=True), prefix="--normalize", doc=InputDocumentation(doc=": normalize read depth according to k-mer coverage.")), ToolInput(tag="in_write_k_freq", input_type=Boolean(optional=True), prefix="--write-k-freq", doc=InputDocumentation(doc=": write kmers along with their frequency of occurrence and exit.")), ToolInput(tag="in_k_dist", input_type=Boolean(optional=True), prefix="--k-dist", doc=InputDocumentation(doc=": print k-mer frequency distribution and exit.")), ToolInput(tag="in_read_k_freq", input_type=File(optional=True), prefix="--read-k-freq", doc=InputDocumentation(doc=": read a set of kmers along with their frequencies of occurrence instead of reading raw input files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

