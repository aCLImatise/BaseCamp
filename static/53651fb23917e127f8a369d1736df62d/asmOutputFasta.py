from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Asmoutputfasta_V0_1_0 = CommandToolBuilder(tool="asmOutputFasta", base_command=["asmOutputFasta"], inputs=[ToolInput(tag="in_write_files_named", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="write files named 'prefix.XXX.TYPE', etc.\nXXX =  type of object\nutg - unitig\ndeg - degenerate\nctg - contig\nscf - scaffold\nTYPE = type of sequence\nfasta - acgt bases\nqv    - Celera encoded quality values\nqual  - NCBI encoded quality values")), ToolInput(tag="in_do_dump_unitigs", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="do NOT dump unitigs")), ToolInput(tag="in_do_dump_degenerates", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="do NOT dump degenerates")), ToolInput(tag="in_do_dump_contigs", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="do NOT dump contigs")), ToolInput(tag="in_do_dump_scaffolds", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="do NOT dump scaffolds")), ToolInput(tag="in_dump_only_unitigs", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="dump only unitigs with at least nf reads\nin them.  Default is 0 (dump all unitigs).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asmoutputfasta_V0_1_0().translate("wdl", allow_empty_container=True)

