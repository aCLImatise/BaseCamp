from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Act_V0_1_0 = CommandToolBuilder(tool="act", base_command=["act"], inputs=[ToolInput(tag="in_options", input_type=File(optional=True), prefix="-options", doc=InputDocumentation(doc="Read a text file of options from FILE")), ToolInput(tag="in_chado", input_type=Boolean(optional=True), prefix="-chado", doc=InputDocumentation(doc="Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment variables)")), ToolInput(tag="in_d_black_belt_mode", input_type=Boolean(optional=True), prefix="-Dblack_belt_mode", doc=InputDocumentation(doc="=?         Keep warning messages to a minimum [true,false]")), ToolInput(tag="in_d_user_plot_x", input_type=File(), prefix="-DuserplotX", doc=InputDocumentation(doc="For sequence 'X' open one or more userplots")), ToolInput(tag="in_dlog_user_plot_x", input_type=File(), prefix="-DloguserplotX", doc=InputDocumentation(doc="For sequence 'X' open one or more userplots, take log(data)")), ToolInput(tag="in_dba_mx", input_type=File(optional=True), prefix="-DbamX", doc=InputDocumentation(doc="[,FILE2,...]     For sequence 'X' open one or more BAM, CRAM, VCF, or BCF files")), ToolInput(tag="in_dcha_do", input_type=Boolean(optional=True), prefix="-Dchado", doc=InputDocumentation(doc="='h:p/d?u'           Get ACT to open this CHADO database")), ToolInput(tag="in_dread_only", input_type=Boolean(optional=True), prefix="-Dread_only", doc=InputDocumentation(doc="Open CHADO database read-only")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="An EMBL, GenBank, FASTA, or GFF3 file")), ToolInput(tag="in_feature", input_type=String(), position=1, doc=InputDocumentation(doc="An Artemis TAB file, or GFF file")), ToolInput(tag="in_comparison", input_type=String(), position=2, doc=InputDocumentation(doc="A BLAST comparison file in tabular format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Act_V0_1_0().translate("wdl", allow_empty_container=True)

