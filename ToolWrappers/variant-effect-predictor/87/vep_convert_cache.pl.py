from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vep_Convert_Cache_Pl_V0_1_0 = CommandToolBuilder(tool="vep_convert_cache.pl", base_command=["vep_convert_cache.pl"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Shhh!")), ToolInput(tag="in_force_overwrite", input_type=Boolean(optional=True), prefix="--force_overwrite", doc=InputDocumentation(doc="Overwrite existing cache files if found")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="Remove old cache files after conversion")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="[dir]          -d   Cache directory (default: $HOME/.vep)")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="--species", doc=InputDocumentation(doc="[species]  -s   Species cache to convert ('all' to do all found)")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="[cmd]     -c   Path to binary/command to decompress gzipped files.\nDefaults to 'zcat', some systems may prefer 'gzip -dc'")), ToolInput(tag="in_b_gzip", input_type=Boolean(optional=True), prefix="--bgzip", doc=InputDocumentation(doc="[cmd]        -b   Path to bgzip binary (default: bgzip)")), ToolInput(tag="in_tab_ix", input_type=Boolean(optional=True), prefix="--tabix", doc=InputDocumentation(doc="[cmd]        -t   Path to tabix binary (default: tabix)")), ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert_cache_do_tpl", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vep_Convert_Cache_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

