from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Msstatsconverter_V0_1_0 = CommandToolBuilder(tool="MSstatsConverter", base_command=["MSstatsConverter"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                     Input consensusXML with peptide intensities (valid formats: 'consensusXML')")), ToolInput(tag="in_in_design", input_type=File(optional=True), prefix="-in_design", doc=InputDocumentation(doc="*                       Experimental Design file (valid formats: 'tsv')")), ToolInput(tag="in_ms_stats_bio_replicate", input_type=String(optional=True), prefix="-msstats_bioreplicate", doc=InputDocumentation(doc="Which column in the condition table should be used for MSstats 'BioReplicate' (default: 'MSstats_BioReplicate')")), ToolInput(tag="in_ms_stats_condition", input_type=String(optional=True), prefix="-msstats_condition", doc=InputDocumentation(doc="Which column in the condition table should be used for MSstats 'Condition' (default: 'MSstats_Condition')")), ToolInput(tag="in_labeled_reference_peptides", input_type=Boolean(optional=True), prefix="-labeled_reference_peptides", doc=InputDocumentation(doc="If set, IsotopeLabelType is 'H', else 'L'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                   Input CSV file for MSstats. (valid formats: 'csv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstatsconverter_V0_1_0().translate("wdl", allow_empty_container=True)

