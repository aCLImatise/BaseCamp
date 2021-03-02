from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Gffutils_Cli_Create_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_create", base_command=["gffutils-cli", "create"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Database to create. Default is to append '.db' to the\nend of the input filename (default: -)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite an existing database (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress the reporting of timing information when\ncreating the database (default: False)")), ToolInput(tag="in_merge", input_type=String(optional=True), prefix="--merge", doc=InputDocumentation(doc="Merge strategy to be used if if duplicate IDs are\nfound. (default: 'merge')")), ToolInput(tag="in_disable_infer_genes", input_type=Boolean(optional=True), prefix="--disable-infer-genes", doc=InputDocumentation(doc="Disable inferring of gene extents for GTF files. Use\nthis if your GTF file already has 'gene' featuretypes\n(default: False)")), ToolInput(tag="in_disable_infer_transcripts", input_type=Boolean(optional=True), prefix="--disable-infer-transcripts", doc=InputDocumentation(doc="Disable inferring of transcript extents for GTF files.\nUse this if your GTF file already has 'transcript'\nfeaturetypes (default: False)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Create_V0_1_0().translate("wdl", allow_empty_container=True)

