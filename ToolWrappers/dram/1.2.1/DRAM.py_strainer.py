from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Dram_Py_Strainer_V0_1_0 = CommandToolBuilder(tool="DRAM.py_strainer", base_command=["DRAM.py", "strainer"], inputs=[ToolInput(tag="in_input_annotations", input_type=File(optional=True), prefix="--input_annotations", doc=InputDocumentation(doc="annotations file to pull genes from (default: None)")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="fasta file to filter (default: None)")), ToolInput(tag="in_output_fast_a", input_type=String(optional=True), prefix="--output_fasta", doc=InputDocumentation(doc="location to write filtered fasta (default:\npull_genes.fasta)")), ToolInput(tag="in_fast_as", input_type=Boolean(optional=True), prefix="--fastas", doc=InputDocumentation(doc="[FASTAS ...]\nspace separated list of fastas to keep (default: None)")), ToolInput(tag="in_scaffolds", input_type=Boolean(optional=True), prefix="--scaffolds", doc=InputDocumentation(doc="[SCAFFOLDS ...]\nspace separated list of scaffolds to keep (default:\nNone)")), ToolInput(tag="in_genes", input_type=Boolean(optional=True), prefix="--genes", doc=InputDocumentation(doc="[GENES ...]   space separated list of genes to keep (default: None)")), ToolInput(tag="in_identifiers", input_type=Boolean(optional=True), prefix="--identifiers", doc=InputDocumentation(doc="[IDENTIFIERS ...]\ndatabase identifiers to keep (default: None)")), ToolInput(tag="in_categories", input_type=Boolean(optional=True), prefix="--categories", doc=InputDocumentation(doc="[CATEGORIES ...]\ndistillate categories to keep genes from (default:\nNone)")), ToolInput(tag="in_taxonomy", input_type=Boolean(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="[TAXONOMY ...]\nLevel of GTDBTk taxonomy to keep (e.g. c__Clostridia),\nspace separated list (default: None)")), ToolInput(tag="in_completeness", input_type=String(optional=True), prefix="--completeness", doc=InputDocumentation(doc="Minimum completeness of genome to keep genes (default:\nNone)")), ToolInput(tag="in_contamination", input_type=String(optional=True), prefix="--contamination", doc=InputDocumentation(doc="Maximum contamination of genome to keep genes\n(default: None)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Py_Strainer_V0_1_0().translate("wdl")

