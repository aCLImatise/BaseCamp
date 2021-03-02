from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Wg_Blimp_Run_Snakemake_V0_1_0 = CommandToolBuilder(tool="wg_blimp_run_snakemake", base_command=["wg-blimp", "run-snakemake"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Only dry-run the pipeline.")), ToolInput(tag="in_use_sample_files", input_type=Boolean(optional=True), prefix="--use-sample-files", doc=InputDocumentation(doc="Load sample names from text files instead of\npassing them as a comma-seperated list.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores to use for running the")), ToolInput(tag="in_genome_build", input_type=Boolean(optional=True), prefix="--genome_build", doc=InputDocumentation(doc="[hg19|hg38|mmul10]\nBuild of the reference used for annotation.")), ToolInput(tag="in_pipeline_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wg_Blimp_Run_Snakemake_V0_1_0().translate("wdl", allow_empty_container=True)

