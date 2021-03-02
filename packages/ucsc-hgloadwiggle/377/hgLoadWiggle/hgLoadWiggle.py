from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Hgloadwiggle_V0_1_0 = CommandToolBuilder(tool="hgLoadWiggle", base_command=["hgLoadWiggle"], inputs=[ToolInput(tag="in_no_bin", input_type=Boolean(optional=True), prefix="-noBin", doc=InputDocumentation(doc="suppress bin field")), ToolInput(tag="in_no_load", input_type=Boolean(optional=True), prefix="-noLoad", doc=InputDocumentation(doc="do not load table, only create .tab file")), ToolInput(tag="in_no_history", input_type=Boolean(optional=True), prefix="-noHistory", doc=InputDocumentation(doc="do not add history table comments (for custom tracks)")), ToolInput(tag="in_old_table", input_type=Boolean(optional=True), prefix="-oldTable", doc=InputDocumentation(doc="add to existing table")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="Separate by tabs rather than space")), ToolInput(tag="in_path_prefix", input_type=File(optional=True), prefix="-pathPrefix", doc=InputDocumentation(doc=".wib file path prefix to use (default /gbdb/<DB>/wib)")), ToolInput(tag="in_chrom_info_db", input_type=Int(optional=True), prefix="-chromInfoDb", doc=InputDocumentation(doc="database to extract chromInfo size information")), ToolInput(tag="in_max_chrom_name_length", input_type=Int(optional=True), prefix="-maxChromNameLength", doc=InputDocumentation(doc="- specify max chromName length to avoid\n- reference to chromInfo table")), ToolInput(tag="in_tmpdir", input_type=File(optional=True), prefix="-tmpDir", doc=InputDocumentation(doc="- path to directory for creation of temporary .tab file\n- which will be removed after loading")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="N=2 see # of lines input and SQL create statement,\nN=3 see chrom size info, N=4 see details on chrom size info\n")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_track", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadwiggle_V0_1_0().translate("wdl", allow_empty_container=True)

