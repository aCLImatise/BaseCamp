from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Genometreetk_Jk_Taxa_V0_1_0 = CommandToolBuilder(tool="genometreetk_jk_taxa", base_command=["genometreetk", "jk_taxa"], inputs=[ToolInput(tag="in_out_group_ids", input_type=File(optional=True), prefix="--outgroup_ids", doc=InputDocumentation(doc="file indicating outgroup taxa")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="model of evolution to use (default: wag)")), ToolInput(tag="in_perc_tax_a", input_type=Float(optional=True), prefix="--perc_taxa", doc=InputDocumentation(doc="percentage of taxa to keep (default: 0.5)")), ToolInput(tag="in_num_replicates", input_type=Int(optional=True), prefix="--num_replicates", doc=InputDocumentation(doc="number of jackknife replicates to perform (default:\n100)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of cpus (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="tree inferred from original data")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc="file containing multiple sequence alignment")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Jk_Taxa_V0_1_0().translate("wdl", allow_empty_container=True)

