from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Momo_Simple_V0_1_0 = CommandToolBuilder(tool="momo_simple", base_command=["momo", "simple"], inputs=[ToolInput(tag="in_psm_type", input_type=String(optional=True), prefix="--psm-type", doc=InputDocumentation(doc="|ms-gf+|tide|percolator")), ToolInput(tag="in_sequence_column", input_type=Boolean(optional=True), prefix="--sequence-column", doc=InputDocumentation(doc="[column name]")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="--width", doc=InputDocumentation(doc="[positive odd integer] (default: 7)")), ToolInput(tag="in_protein_database", input_type=File(optional=True), prefix="--protein-database", doc=InputDocumentation(doc="(default: None)")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="[field],lt|le|eq|ge|gt,[threshold] (default: no filter)")), ToolInput(tag="in_remove_unknowns", input_type=String(optional=True), prefix="--remove-unknowns", doc=InputDocumentation(doc="|F (default: F)")), ToolInput(tag="in_eliminate_repeats", input_type=Boolean(optional=True), prefix="--eliminate-repeats", doc=InputDocumentation(doc="[positive odd integer or 0 for no elimination] (default: width)")), ToolInput(tag="in_min_occurrences", input_type=Boolean(optional=True), prefix="--min-occurrences", doc=InputDocumentation(doc="[non-negative] (default: 5)")), ToolInput(tag="in_single_motif_per_mass", input_type=Boolean(optional=True), prefix="--single-motif-per-mass", doc=InputDocumentation(doc="[positive integer or 0 for linear search] (default: 0)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="|2|3|4|5 (default: 2)")), ToolInput(tag="in_ptm_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Momo_Simple_V0_1_0().translate("wdl")

