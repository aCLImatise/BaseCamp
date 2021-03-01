from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Bedtobigbed_V0_1_0 = CommandToolBuilder(tool="bedToBigBed", base_command=["bedToBigBed"], inputs=[ToolInput(tag="in_type", input_type=Int(optional=True), prefix="-type", doc=InputDocumentation(doc="[+[P]] :\nN is between 3 and 15,\noptional (+) if extra 'bedPlus' fields,\noptional P specifies the number of extra fields. Not required, but preferred.\nExamples: -type=bed6 or -type=bed6+ or -type=bed6+3\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)")), ToolInput(tag="in_as", input_type=String(optional=True), prefix="-as", doc=InputDocumentation(doc="- If you have non-standard 'bedPlus' fields, it's great to put a definition\nof each field in a row in AutoSql format here.")), ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="-blockSize", doc=InputDocumentation(doc="- Number of items to bundle in r-tree.  Default 256")), ToolInput(tag="in_items_per_slot", input_type=Int(optional=True), prefix="-itemsPerSlot", doc=InputDocumentation(doc="- Number of data points bundled at lowest level. Default 512")), ToolInput(tag="in_unc", input_type=Boolean(optional=True), prefix="-unc", doc=InputDocumentation(doc="- If set, do not use compression.")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="- If set, expect fields to be tab separated, normally\nexpects white space separator.")), ToolInput(tag="in_extra_index", input_type=String(optional=True), prefix="-extraIndex", doc=InputDocumentation(doc="- If set, make an index on each field in a comma separated list\nextraIndex=name and extraIndex=name,id are commonly used.")), ToolInput(tag="in_sizes_is_two_bit", input_type=Boolean(optional=True), prefix="-sizesIs2Bit", doc=InputDocumentation(doc="-- If set, the chrom.sizes file is assumed to be a 2bit file.")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files.")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtobigbed_V0_1_0().translate("wdl", allow_empty_container=True)

