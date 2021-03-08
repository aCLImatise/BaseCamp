from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Dram_Py_Distill_V0_1_0 = CommandToolBuilder(tool="DRAM.py_distill", base_command=["DRAM.py", "distill"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Annotations path (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to write summarized genomes (default: None)")), ToolInput(tag="in_rrna_path", input_type=File(optional=True), prefix="--rrna_path", doc=InputDocumentation(doc="rRNA output from annotation (default: None)")), ToolInput(tag="in_trna_path", input_type=File(optional=True), prefix="--trna_path", doc=InputDocumentation(doc="tRNA output from annotation (default: None)")), ToolInput(tag="in_group_by_column", input_type=String(optional=True), prefix="--groupby_column", doc=InputDocumentation(doc="Column from annotations to group as organism units\n(default: fasta)")), ToolInput(tag="in_custom_distillate", input_type=String(optional=True), prefix="--custom_distillate", doc=InputDocumentation(doc="Custom distillate form to add your own modules\n(default: None)")), ToolInput(tag="in_distillate_gene_names", input_type=Boolean(optional=True), prefix="--distillate_gene_names", doc=InputDocumentation(doc="Give names of genes instead of counts in genome\nmetabolism summary (default: False)")), ToolInput(tag="in_genomes_per_product", input_type=Int(optional=True), prefix="--genomes_per_product", doc=InputDocumentation(doc="Number of genomes per product.html output. Decrease\nvalue if getting JavaScript Error: Maximum call stack\nsize exceeded when viewing product.html in browser.\n(default: 1000)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Py_Distill_V0_1_0().translate("wdl")

