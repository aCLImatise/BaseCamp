from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gsalign_V0_1_0 = CommandToolBuilder(tool="GSAlign", base_command=["GSAlign"], inputs=[ToolInput(tag="in_int_number_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="INT     number of threads [8]")), ToolInput(tag="in_str_set_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="STR     Set the prefix of the output files [output]")), ToolInput(tag="in_fmt", input_type=Boolean(optional=True), prefix="-fmt", doc=InputDocumentation(doc="INT     Set the output format 1:maf, 2:aln [1]")), ToolInput(tag="in_id_y", input_type=Boolean(optional=True), prefix="-idy", doc=InputDocumentation(doc="INT     Set the minimal sequence identity (0-100) of a local alignment [70]")), ToolInput(tag="in_slen", input_type=Boolean(optional=True), prefix="-slen", doc=InputDocumentation(doc="INT     Set the minimal seed length [15]")), ToolInput(tag="in_alen", input_type=Boolean(optional=True), prefix="-alen", doc=InputDocumentation(doc="INT     Set the minimal alignment length [200]")), ToolInput(tag="in_ind", input_type=Boolean(optional=True), prefix="-ind", doc=InputDocumentation(doc="INT     Set the maximal indel size [25]")), ToolInput(tag="in_clr", input_type=Boolean(optional=True), prefix="-clr", doc=InputDocumentation(doc="INT     Set the minimal cluster size [200]")), ToolInput(tag="in_unique", input_type=Boolean(optional=True), prefix="-unique", doc=InputDocumentation(doc="Output unique alignment only [false]")), ToolInput(tag="in_sen", input_type=Boolean(optional=True), prefix="-sen", doc=InputDocumentation(doc="Sensitive mode [False]")), ToolInput(tag="in_dp", input_type=Boolean(optional=True), prefix="-dp", doc=InputDocumentation(doc="Output Dot-plots")), ToolInput(tag="in_set_one_one", input_type=Boolean(optional=True), prefix="-one", doc=InputDocumentation(doc="set one on one aligment mode[false]")), ToolInput(tag="in_gp", input_type=Boolean(optional=True), prefix="-gp", doc=InputDocumentation(doc="STR     Specify the path of gnuplot"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsalign_V0_1_0().translate("wdl", allow_empty_container=True)

