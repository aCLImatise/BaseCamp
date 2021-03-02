from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Opsin_V0_1_0 = CommandToolBuilder(tool="opsin", base_command=["opsin"], inputs=[ToolInput(tag="in_allow_acids_without_acid", input_type=Boolean(optional=True), prefix="--allowAcidsWithoutAcid", doc=InputDocumentation(doc="Allows interpretation of acids without\nthe word acid e.g. 'acetic'")), ToolInput(tag="in_detailed_failure_analysis", input_type=Boolean(optional=True), prefix="--detailedFailureAnalysis", doc=InputDocumentation(doc="Enables reverse parsing to more\naccurately determine why parsing failed")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Include name in SMILES/InChI output\n(tab delimited)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Sets OPSIN's output format (default\nsmi)\nAllowed values are:\ncml for Chemical Markup Language\nsmi for SMILES\nextendedsmi for Extended SMILES\ninchi for InChI (with FixedH)\nstdinchi for StdInChI\nstdinchikey for StdInChIKey")), ToolInput(tag="in_allow_radicals", input_type=Boolean(optional=True), prefix="--allowRadicals", doc=InputDocumentation(doc="Enables interpretation of radicals")), ToolInput(tag="in_allow_uninterpretable_stereo", input_type=Boolean(optional=True), prefix="--allowUninterpretableStereo", doc=InputDocumentation(doc="Allows stereochemistry uninterpretable\nby OPSIN to be ignored")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enables debugging")), ToolInput(tag="in_wildcard_radicals", input_type=Boolean(optional=True), prefix="--wildcardRadicals", doc=InputDocumentation(doc="Radicals are output as wildcard atoms")), ToolInput(tag="in_jar", input_type=Int(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opsin_V0_1_0().translate("wdl", allow_empty_container=True)

