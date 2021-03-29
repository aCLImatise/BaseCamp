from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, Int

Nf_Core_Download_V0_1_0 = CommandToolBuilder(tool="nf_core_download", base_command=["nf-core", "download"], inputs=[ToolInput(tag="in_release", input_type=String(optional=True), prefix="--release", doc=InputDocumentation(doc="Pipeline release")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="[tar.gz|tar.bz2|zip|none]\nArchive compression type")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite existing files")), ToolInput(tag="in_singularity", input_type=Boolean(optional=True), prefix="--singularity", doc=InputDocumentation(doc="Download singularity images")), ToolInput(tag="in_singularity_cache", input_type=Directory(optional=True), prefix="--singularity-cache", doc=InputDocumentation(doc="Don't copy images to the output directory,\ndon't set 'singularity.cacheDir' in workflow")), ToolInput(tag="in_parallel_downloads", input_type=Int(optional=True), prefix="--parallel-downloads", doc=InputDocumentation(doc="Number of parallel image downloads")), ToolInput(tag="in_pipeline_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory")), ToolOutput(tag="out_singularity_cache", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_singularity_cache", type_hint=File()), doc=OutputDocumentation(doc="Don't copy images to the output directory,\ndon't set 'singularity.cacheDir' in workflow"))], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Download_V0_1_0().translate("wdl")

