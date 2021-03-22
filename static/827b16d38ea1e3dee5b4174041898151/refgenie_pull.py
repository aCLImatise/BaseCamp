from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Refgenie_Pull_V0_1_0 = CommandToolBuilder(tool="refgenie_pull", base_command=["refgenie", "pull"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if REFGENIE\nenvironment variable is set.")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="Whether the config file should not be locked for reading")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_no_overwrite", input_type=Boolean(optional=True), prefix="--no-overwrite", doc=InputDocumentation(doc="Do not overwrite if asset exists.")), ToolInput(tag="in_force_overwrite", input_type=Boolean(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Overwrite if asset exists.")), ToolInput(tag="in_no_large", input_type=Boolean(optional=True), prefix="--no-large", doc=InputDocumentation(doc="Do not pull archives over 5GB.")), ToolInput(tag="in_pull_large", input_type=Boolean(optional=True), prefix="--pull-large", doc=InputDocumentation(doc="Pull any archive, regardless of its size.")), ToolInput(tag="in_size_cut_off", input_type=Int(optional=True), prefix="--size-cutoff", doc=InputDocumentation(doc="Maximum archive file size to download with no confirmation\nrequired (in GB, default: 10)")), ToolInput(tag="in_batch", input_type=Boolean(optional=True), prefix="--batch", doc=InputDocumentation(doc="Use batch mode: pull large archives, do no overwrite")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify assets (e.g.\nhg38/fasta or hg38/fasta:tag)."))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Pull_V0_1_0().translate("wdl")

