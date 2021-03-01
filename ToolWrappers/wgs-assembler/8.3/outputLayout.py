from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Outputlayout_V0_1_0 = CommandToolBuilder(tool="outputLayout", base_command=["outputLayout"], inputs=[ToolInput(tag="in_mandatory_path_gkpstore", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="Mandatory path to a gkpStore.")), ToolInput(tag="in_ignore_corrected_fragments", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="ignore corrected fragments less than 500 bp")), ToolInput(tag="in_input_prefix_of", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="input prefix of")), ToolInput(tag="in_output_prefix_asm", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix of asm")), ToolInput(tag="in_maximum_uncorrected_pacbio", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="The maximum uncorrected PacBio gap that will be allowed. When there is no short-read coverage for a region, by default the pipeline will split a PacBio sequence. This option allows a number of PacBio sequences without short-read coverage to remain. For example, specifying 50, will mean 50bp can have no short-read coverage without splitting the PacBio sequence. Warning: this will allow more sequences that went through the SMRTportal to not be fixed.")), ToolInput(tag="in_level_verbosity_higher", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="level of verbosity. Higher values generate more debugging output")), ToolInput(tag="in_consider_pileup_times", input_type=Int(optional=True), prefix="-R", doc=InputDocumentation(doc="consider a pileup of 0.000000 times the mean for a single corrected read to be a repeat and distribute reads to their best locations (this is only useful for metagenomic or non-even coverage datasets. Otherwise the global repeat estimate is used instead)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Outputlayout_V0_1_0().translate("wdl", allow_empty_container=True)

