from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bamtools_2_4_1_Split_V0_1_0 = CommandToolBuilder(tool="bamtools_2.4.1_split", base_command=["bamtools-2.4.1", "split"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_ref_prefix", input_type=String(optional=True), prefix="-refPrefix", doc=InputDocumentation(doc="custom prefix for splitting by\nreferences. Currently files end with\nREF_<refName>.bam. This option allows you\nto replace 'REF_' with a prefix of your\nchoosing.")), ToolInput(tag="in_tag_prefix", input_type=String(optional=True), prefix="-tagPrefix", doc=InputDocumentation(doc="custom prefix for splitting by\ntags. Current files end with\nTAG_<tagname>_<tagvalue>.bam. This option\nallows you to replace 'TAG_' with a prefix\nof your choosing.")), ToolInput(tag="in_stub", input_type=File(optional=True), prefix="-stub", doc=InputDocumentation(doc="prefix stub for output BAM\nfiles (default behavior is to use input\nfilename, without .bam extension, as\nstub). If input is stdin and no stub\nprovided, a timestamp is generated as the\nstub.")), ToolInput(tag="in_taglist_delim", input_type=String(optional=True), prefix="-tagListDelim", doc=InputDocumentation(doc="delimiter used to separate\nvalues in the filenames generated from\nsplitting on list-type tags [--]")), ToolInput(tag="in_mapped", input_type=Boolean(optional=True), prefix="-mapped", doc=InputDocumentation(doc="split mapped/unmapped")), ToolInput(tag="in_tag", input_type=File(optional=True), prefix="-tag", doc=InputDocumentation(doc="splits alignments based on all\nvalues of TAG encountered (i.e. -tag RG\ncreates a BAM file for each read group in\noriginal BAM file)")), ToolInput(tag="in_bam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_split", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_2_4_1_Split_V0_1_0().translate("wdl", allow_empty_container=True)

