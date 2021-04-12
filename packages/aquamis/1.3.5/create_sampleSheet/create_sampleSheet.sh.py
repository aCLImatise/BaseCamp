from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Create_Samplesheet_Sh_V0_1_0 = CommandToolBuilder(tool="create_sampleSheet.sh", base_command=["create_sampleSheet.sh"], inputs=[ToolInput(tag="in_mode", input_type=Boolean(optional=True), prefix="--mode", doc=InputDocumentation(doc=": Choose mode from illumina, ncbi, flex, assembly  (default: illumina)")), ToolInput(tag="in_fast_xdir", input_type=Boolean(optional=True), prefix="--fastxDir", doc=InputDocumentation(doc=": Path to existing directory containing the fastq or fasta files (default: /)")), ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outDir", doc=InputDocumentation(doc=": Path to existing outDir (default: fastxDir)")), ToolInput(tag="in_no_check", input_type=Boolean(optional=True), prefix="--nocheck", doc=InputDocumentation(doc=": Do not check consistency of sample sheet")), ToolInput(tag="in_interactive", input_type=Boolean(optional=True), prefix="--interactive", doc=InputDocumentation(doc=": Ask before starting the program")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc=": Overwrite existing samples.tsv files in OutDir")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc=": Perform a dry-run"))], outputs=[], container="quay.io/biocontainers/aquamis:1.3.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Samplesheet_Sh_V0_1_0().translate("wdl")

