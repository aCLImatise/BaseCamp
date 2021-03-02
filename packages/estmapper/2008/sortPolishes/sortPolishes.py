from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory

Sortpolishes_V0_1_0 = CommandToolBuilder(tool="sortPolishes", base_command=["sortPolishes"], inputs=[ToolInput(tag="in_c_sort_cdna", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="(-C)    Sort by the cDNA index (defline).")), ToolInput(tag="in_g_sort_genomic", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="(-G)    Sort by the genomic index (defline).")), ToolInput(tag="in_skip_sort_do", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Skip the sort, just do a merge.")), ToolInput(tag="in_use_using_merge", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Use at most M MB of core, using a disk-based merge if memory\nis exhausted.  Default: 4096.")), ToolInput(tag="in_use_directory_temporary", input_type=Directory(optional=True), prefix="-t", doc=InputDocumentation(doc="Use directory 'T' for temporary files.  Default is the current\nworking directory.  The sort unlinks files immediately after\ncreation: no files will exist, but space will be used.")), ToolInput(tag="in_gff_three", input_type=Boolean(optional=True), prefix="-gff3", doc=InputDocumentation(doc="Format output as GFF3.")), ToolInput(tag="in_be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Be verbose."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sortpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

