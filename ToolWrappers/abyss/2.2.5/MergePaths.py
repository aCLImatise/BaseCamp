from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Mergepaths_V0_1_0 = CommandToolBuilder(tool="MergePaths", base_command=["MergePaths"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="k-mer size")), ToolInput(tag="in_seed_length", input_type=Int(optional=True), prefix="--seed-length", doc=InputDocumentation(doc="minimum length of a seed contig [0]")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genome-size", doc=InputDocumentation(doc="expected genome size. Used to calculate NG50\nand associated stats [disabled]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write result to FILE")), ToolInput(tag="in_no_greedy", input_type=Boolean(optional=True), prefix="--no-greedy", doc=InputDocumentation(doc="use the non-greedy algorithm [default]")), ToolInput(tag="in_greedy", input_type=Boolean(optional=True), prefix="--greedy", doc=InputDocumentation(doc="use the greedy algorithm")), ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="write the path overlap graph to FILE")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="specify path of database repository in FILE")), ToolInput(tag="in_library", input_type=String(optional=True), prefix="--library", doc=InputDocumentation(doc="specify library NAME for database")), ToolInput(tag="in_strain", input_type=String(optional=True), prefix="--strain", doc=InputDocumentation(doc="specify strain NAME for database")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="specify species NAME for database")), ToolInput(tag="in_len", input_type=String(), position=0, doc=InputDocumentation(doc="lengths of the contigs")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="sequences of contig IDs"))], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergepaths_V0_1_0().translate("wdl")

