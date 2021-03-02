from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, File, String, Boolean

Tombo_Write_Wiggles_V0_1_0 = CommandToolBuilder(tool="tombo_write_wiggles", base_command=["tombo", "write_wiggles"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_control_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--control-fast5-basedirs", doc=InputDocumentation(doc="Control set of directories containing fast5 files.\nThese reads should contain only standard nucleotides.")), ToolInput(tag="in_statistics_filename", input_type=File(optional=True), prefix="--statistics-filename", doc=InputDocumentation(doc="File to save/load base by base statistics.")), ToolInput(tag="in_wiggle_basename", input_type=String(optional=True), prefix="--wiggle-basename", doc=InputDocumentation(doc="Basename for output wiggle files. Two files (plus and\nminus strand) will be produced for each --wiggle-types\nsupplied. Filenames formatted as '[wiggle-basename\n].[wiggle-type].[sample|control]?.[plus|minus].wig'.\nDefault: tombo_results")), ToolInput(tag="in_wiggle_types", input_type=String(optional=True), prefix="--wiggle-types", doc=InputDocumentation(doc="[{coverage,fraction,signal,signal_sd,length,stat,mt_stat,difference} ...]\nData types of wiggles to produce. Default: 'coverage\nfraction'")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_subgroups", input_type=Array(t=String(), optional=True), prefix="--basecall-subgroups", doc=InputDocumentation(doc="FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls. Default: ['BaseCalled_template']")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Write_Wiggles_V0_1_0().translate("wdl", allow_empty_container=True)

